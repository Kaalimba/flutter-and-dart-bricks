import 'package:{{app_name.snakeCase()}}/core/extensions/context_extension.dart';
import 'package:{{app_name.snakeCase()}}/core/widgets/inputs/text_field.dart';
import 'package:{{app_name.snakeCase()}}/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class _Country {
  _Country._({
    required this.isoCode,
    required this.callingCode,
    required this.msisdnLength,
  });

  final String isoCode;
  final String callingCode;
  final int msisdnLength;

  String get flagEmoji {
    return isoCode.toUpperCase().replaceAllMapped(
      RegExp('[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397),
    );
  }

  @override
  String toString() => '$flagEmoji $callingCode';

  static final _Country defaultOne = _Country._(
    isoCode: 'CI',
    callingCode: '+225',
    msisdnLength: 10,
  );

  static List<_Country> all = <_Country>[
    defaultOne,
    _Country._(
      isoCode: 'US',
      callingCode: '+1',
      msisdnLength: 10,
    ),
    _Country._(
      isoCode: 'UK',
      callingCode: '+44',
      msisdnLength: 10,
    ),
  ];
}

class PhoneNumberTextField extends StatefulWidget {
  const PhoneNumberTextField({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.validator,
    this.onCountryChanged,
    this.enabled = true,
  });

  final String? label;
  final String? hint;
  final bool enabled;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onCountryChanged;

  @override
  State<PhoneNumberTextField> createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  _Country _value = _Country.defaultOne;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null) ...[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 2,
              ),
              child: Text(
                widget.label!,
                style: context.textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: widget.enabled
                      ? context.colorScheme.onSurfaceVariant
                      : context.colorScheme.surfaceContainerHigh,
                ),
              ),
            ),
          ),
          const Gap(8),
        ],
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: widget.enabled
                      ? context.colorScheme.outline
                      : context.colorScheme.surfaceContainerHigh,
                ),
              ),
              child: DropdownButton<_Country>(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                underline: const SizedBox.shrink(),
                borderRadius: BorderRadius.circular(12),
                items: _Country.all
                    .map(
                      (c) => DropdownMenuItem(
                        value: c,
                        child: Text(
                          c.toString(),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: widget.enabled
                    ? (v) {
                        setState(() {
                          _value = v ?? _Country.defaultOne;
                        });

                        widget.onCountryChanged?.call(_value.callingCode);
                      }
                    : null,
                value: _value,
              ),
            ),
            const Gap(8),
            Expanded(
              child: AppTextField(
                enabled: widget.enabled,
                hint: widget.hint,
                controller: widget.controller,
                validator: _validator,
                inputType: TextInputType.number,
                formatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(_value.msisdnLength),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  String? _validator(String? text) {
    if (text == null || text.trim().isEmpty) {
      return context.l10n.phoneNumberRequired;
    }

    if (text.length != _value.msisdnLength) {
      return context.l10n.phoneNumberLengthError(_value.msisdnLength);
    }

    return widget.validator?.call(text);
  }
}

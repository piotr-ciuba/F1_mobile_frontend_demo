import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizedContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}

# HDI_4DWP_MultiColumn

![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)
![4D](https://img.shields.io/static/v1?label=4D&message=21%2B&color=blue)
[![license](https://img.shields.io/github/license/miyako/HDI_4DWP_MultiColumn)](LICENSE)

**How do I create multi-column documents in 4D Write Pro?**

A 4D **HDI** ("How Do I") example. It shows how to set up columns, column separators and paragraph decoration in a [4D Write Pro](https://developer.4d.com/docs/WritePro/overview) document, both from code and through standard actions.

## Origin

The example was published with 4D v17 as a binary `.4DB` database, then converted to a 4D project with 4D 21 and modernised.

- **Blog post:** https://blog.4d.com/create-multi-column-documents-in-4d-write-pro/
- **Original download:** https://download.4d.com/Demos/4D_v17/HDI_4DWP_MultiColumn.zip

## Requirements

| Item | Value |
|------|-------|
| 4D | 21 or later (project compatibility version 21.1) |
| License | 4D Write Pro (the splash dialog checks for it and explains what is missing) |
| Platforms | macOS, Windows |

## Getting started

1. Open `Project/HDI_4DWP_MultiColumn.4DProject` with 4D.
2. The startup method `00_Start` opens the splash dialog. Click **Demo** to open the main window.
3. Use the tabs to read the description, apply columns to a sample document, or experiment with a blank Lorem ipsum document.

The splash can also be reopened from **File > Demo**. If it is already open, it is brought to the front instead of being duplicated.

## Features

| Tab | What it demonstrates |
|-----|----------------------|
| Description | Styled text loaded from the `Samples` table |
| Standard actions | `section/columnCount`, `section/columnSpacing`, `section/columnRuleStyle`, `section/columnRuleColor`, `section/columnRuleWidth` and `insertColumnBreak` bound to form objects, with no code |
| Programmatic | `WP SET ATTRIBUTES` with `wk column count`, `wk column spacing`, `wk column rule style`, `wk column rule width` and `wk column rule color`; paragraph background, padding and border; `WP RESET ATTRIBUTES`; column breaks with `WP Insert break` and `wk column break` |

Other points of interest:

- Documents are loaded and saved with `WP Import document` and `WP EXPORT DOCUMENT` (`wk 4wp`), using `Resources/myDoc.4wp`.
- Sample data is imported from `Resources/*.4ie` and `*.4si` on first launch if the tables are empty.
- The splash dialog checks the minimum 4D version and the Write Pro license, and displays a localised explanation if either is missing.

## Project layout

| Path | Content |
|------|---------|
| `Project/Sources/Methods/00_Start.4dm` | Startup and menu entry point |
| `Project/Sources/Forms/HDI` | Splash dialog |
| `Project/Sources/Forms/HDI2` | Main demo window |
| `Project/Sources/TableForms` | Input and list forms for the `Samples` and `Person` tables |
| `Project/Sources/styleSheets*.css` | Dark mode and Liquid Glass styling |
| `Resources/{en,ja}.lproj` | XLIFF localisation (menus, per-form, messages) |

## Modernisation notes

Things you can reuse in your own projects:

- **Non-blocking dialogs.** `CALL WORKER(1; ...)` plus `DIALOG(...; *)` replaces `New process` and `CLOSE WINDOW`. A plain form window is used instead of a popup window, and `SET MENU BAR` keeps menus available.
- **Window reuse.** The startup method enumerates windows and brings the existing splash to the front instead of opening a second one.
- **Graceful failure.** When requirements are not met, the button reads *Close* and returns to design mode with `INVOKE ACTION(ak return to design mode)` rather than quitting 4D.
- **Localisation.** All user-visible text uses `:xliff:` references or `Localized string`. English and Japanese are provided.
- **Dark mode.** `automatic` colors, plus `prefers-color-scheme` classes in `styleSheets.css` for custom colors.
- **macOS Tahoe Liquid Glass.** `styleSheets_mac.css` sets push button height to 27px for `liquid-glass` and 23px for `mac-classic`. The height is removed from the form JSON so the CSS applies.
- **Menu standard actions.** The `m_Quit` wrapper was replaced with `"action": "quit"`.
- **Modern declarations.** `var` and `#DECLARE` replace the `C_*` commands.

## References

- [Write Pro: multi-column documents (blog)](https://blog.4d.com/create-multi-column-documents-in-4d-write-pro/)
- [4D Write Pro documentation](https://developer.4d.com/docs/WritePro/overview)
- [`WP SET ATTRIBUTES`](https://developer.4d.com/docs/WritePro/commands/wp-set-attributes)
- [CSS in 4D forms](https://developer.4d.com/docs/FormEditor/stylesheets)
- [Localisation with XLIFF](https://developer.4d.com/docs/Project/localization)
- [Liquid Glass in 4D](https://blog.4d.com/the-new-macos-tahoe-design-comes-to-your-4d-applications/)

## License

See [LICENSE](LICENSE).

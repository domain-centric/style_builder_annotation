import 'package:meta/meta_meta.dart';

const generateStyleClass = GenerateStyleClass();

/// Annotation on a class to hint the style_builder
/// to generate a [ThemeExtension] style class from it.
/// 
/// The annotated class provides:
/// * The name of the style class. It typically ends with "Default".
///   e.g. "MyWidgetDefault" will generate "MyWidgetStyle".
/// * The cosmetic properties of the style class.
/// 
/// Note that the class:
/// * Must be a const class.
/// * Provides default values for the all cosmetic properties. 
///   The properties and their default values are defined by either:
///   * none static final fields
///   * none static getter methods
///   * none static methods without parameters
///   * none static methods with a BuildContext parameter
/// 
/// For examples, see https://github.com/domain-centric/style_builder/tree/main/example/lib
@Target({TargetKind.classType})
class GenerateStyleClass {
  const GenerateStyleClass();
}

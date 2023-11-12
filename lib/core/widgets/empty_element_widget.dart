import 'package:flutter/material.dart';

class EmptyElementWidget extends Widget {
  const EmptyElementWidget({super.key});

  @override
  Element createElement() {
    return EmptyElement(this);
  }
}

class EmptyElement extends Element {
  EmptyElement(super.widget);

  @override
  void mount(Element? parent, Object? newSlot) {
    assert(parent is! MultiChildRenderObjectElement, 'EmptyElementWidget cannot be a descendant of MultiChildRenderObjectElement');
    super.mount(parent, newSlot);
  }

  @override
  bool get debugDoingBuild => false;

  @override
  void performRebuild() {
    super.performRebuild();
  }
}
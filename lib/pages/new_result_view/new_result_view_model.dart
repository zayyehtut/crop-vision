import '/components/card_title/card_title_widget.dart';
import '/components/expert_call/expert_call_widget.dart';
import '/components/product_card/product_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_result_view_widget.dart' show NewResultViewWidget;
import 'package:flutter/material.dart';

class NewResultViewModel extends FlutterFlowModel<NewResultViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CardTitle component.
  late CardTitleModel cardTitleModel;
  // Model for Product1.
  late ProductCardModel product1Model;
  // Model for Product2.
  late ProductCardModel product2Model;
  // Model for Product3.
  late ProductCardModel product3Model1;
  // Model for Product3.
  late ProductCardModel product3Model2;
  // Model for Product3.
  late ProductCardModel product3Model3;
  // Model for ExpertCall component.
  late ExpertCallModel expertCallModel1;
  // Model for ExpertCall component.
  late ExpertCallModel expertCallModel2;
  // Model for ExpertCall component.
  late ExpertCallModel expertCallModel3;

  @override
  void initState(BuildContext context) {
    cardTitleModel = createModel(context, () => CardTitleModel());
    product1Model = createModel(context, () => ProductCardModel());
    product2Model = createModel(context, () => ProductCardModel());
    product3Model1 = createModel(context, () => ProductCardModel());
    product3Model2 = createModel(context, () => ProductCardModel());
    product3Model3 = createModel(context, () => ProductCardModel());
    expertCallModel1 = createModel(context, () => ExpertCallModel());
    expertCallModel2 = createModel(context, () => ExpertCallModel());
    expertCallModel3 = createModel(context, () => ExpertCallModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cardTitleModel.dispose();
    product1Model.dispose();
    product2Model.dispose();
    product3Model1.dispose();
    product3Model2.dispose();
    product3Model3.dispose();
    expertCallModel1.dispose();
    expertCallModel2.dispose();
    expertCallModel3.dispose();
  }
}

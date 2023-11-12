import 'package:flutter/material.dart';

class TreeView extends StatelessWidget {
  final List<TreeNode> nodes;

  const TreeView({super.key, required this.nodes});

  Widget _buildNode(TreeNode node) {
    return ListTile(
      horizontalTitleGap: 0,
      minVerticalPadding: 0,
      minLeadingWidth: 0,
      enabled: false,
      title: Row(
        children: [
          node.icon,
          const SizedBox(width: 8),
          Text(node.label, style: const TextStyle(color: Colors.black)),
        ],
      ),
      subtitle: node.children.isNotEmpty
          ? ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: node.children.length,
              itemBuilder: (context, index) => _buildNode(node.children[index]),
            )
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: nodes.length,
      itemBuilder: (context, index) => _buildNode(nodes[index]),
    );
  }
}

class TreeNode {
  String label;
  List<TreeNode> children;
  Widget icon;
  void Function()? onTap;

  TreeNode({
    required this.label,
    this.children = const [],
    this.icon = const Icon(Icons.folder_copy),
    this.onTap,
  });
}

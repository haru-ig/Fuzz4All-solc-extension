pragma solidity ^0.8.0;
contract Mutated {
    struct Node {
        uint256 value;
        Node left;
        Node right;
    }
    Node node;
    function insertNew(uint256 value) public {
      node.left = node.right = address(0);
      node.value = value;
    }
    function get(uint256 index) public view returns (uint256) {
      return index == 0? node.value : get(index - 1);
    }
    function findMaxLeftIndex() public view returns (uint256) {
      uint256 max = 0;
      if (node.left!= address(0)) {
    	getLeftChild(node, max);
      }
      return max;
    }
    function getLeftChild(Node root, uint256 max) public view {
      if (root.right!= address(0)) {
        getLeftChild(Node(root.right), max);
      }
      max++;
    }
    function findMinRightIndex() public view returns (uint256) {
      uint256 min = 0xffffffff;
      if (node.right!= address(0)) {
        getRightChild(node, min);
      }
      return min;
    }
    function getRightChild(Node root, uint256 min) public view {
      if (root.left!= address(0)) {
        getRightChild(Node(root.left), min);
      }
      min++;
    }
    function sortRightToLeft() public {
      sortRight(node);
      sortRight(node.right);
    }
    function sortRight(Node root) public {
      Node min = root;
      if (root.right!= address(0)) {
        min = min.right;
        while (min.left!= address(0) && min.left.balance > 0) {
          min = min.left;
        }
        if (min.right!= address(0)) {
          root.value = min.value;
          min.right = root.right;
          root.right = address(0);
          sortRight(min);
        }
      }
    }
}

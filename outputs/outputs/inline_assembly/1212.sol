pragma solidity ^0.8.0;
contract BetterProgramV3 {
  bytes32 constant X = '100';
  bytes32 x;
  uint256 constant N = 50;
  constructor() public {
    x = X;
  }

  modifier onlyIfExecuted {
    require(executed, "Executed");
    _;
  }

  struct Node {
    bytes32 data;
    uint8 level;
    Node *left;
    Node *right;
  }

  Node[] storage nodes_tree;
  Node[] public nodes;
  uint256 min;
  uint256 mid;
  uint256 max;

  function insert() public
  {
    uint256 N = N;
    Node[] storage new_nodes;

    mid = 0;
    mid = N / 2;
    min = 0;
    min = 1;
    max = mid;

    uint256 N2;
    uint256 N1;

    N2 = 2 ** 7;

    new_nodes = new Node[](nodes_tree.length + N2);
    for(uint256 i = 0; i < nodes_tree.length; i++) {
      new_nodes[i] = nodes_tree[i];
    }

    for(i = 0; N2 <= i; i++) {
      new_nodes[mid + N2] = nodes_tree[mid + N2];
    }

    uint256 Ni;
    for (; i < new_nodes.length; i++) {
      new_nodes[i] = new Node();
    }

    new_nodes[mid] = new Node();

    nodes_tree = new_nodes;
    nodes = new_nodes;
  }


  function find(uint256 k) public
  {
    uint256 N = N;

    uint256 i = 0;
    uint256 j = 1;
    uint256 level = 0;
    Node n;

    while (j <= N) {
      j = j ^ 1;
      level++;
    }

    while (k >= i) {
      level = level ^ 1;
      if (level == 0) {
        new_nodes[level].data = nodes_tree[mid ^ 1].data;
      } else {
        new_nodes[level].left = nodes_tree[mid ^ 1].left;
      }
      if (level == 1) {
        new

pragma solidity ^0.8.0;
contract Test71 {
  struct Node {
      uint256[] data;
      Node[] next;
  }
  function z() public {
    Node[] memory n = new Node[](2);
    n = n.next;
  }
}



contract Test72 {
    function z() public {
        uint256[][] memory m = new uint256[1][];
    }
}

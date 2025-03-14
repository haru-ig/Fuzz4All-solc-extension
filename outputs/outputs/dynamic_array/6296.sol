pragma solidity ^0.8.0;
contract c {
  function get() public pure returns (string memory) {
    c memory c;
    string memory s = c.get();
    bytes memory b;
    (b, s) = (bytes memory(s), bytes(s));
    s = new bytes(b).subarray(0, b.length).toString();
    return s;
  }
}
pragma solidity ^0.8.0;
contract c {
  using strings for *;

  function get_string() public pure returns (string memory) {
    return "this is the message";
  }

  function get_bytes() public pure returns (bytes memory) {
    bytes memory b;
    bytes memory s = new bytes(b).subarray(0, b.length).toString();
    return s;
  }

  function get_bytes_subarray(uint256 offset, uint256 length) public pure returns (bytes memory) {
    bytes memory b;
    b = new bytes(b).subarray(0, b.length).toString();
    bytes memory t = b.subarray(offset, length);
    return t;
  }
}

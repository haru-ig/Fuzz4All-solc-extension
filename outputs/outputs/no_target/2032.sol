pragma solidity ^0.8.0;
contract Modification3 {
    int256 public a;
    string public b;
    bytes32 public c;
    bytes32 public d;
    mapping(address => uint) public data;
    function Modification2(address _owner, string memory _b,bytes32 _c)public {
        a = 1;
        b = _b;
        c = _c;
    }
    function transferOwnership(address _admin)public {
        d = _admin;
    }
}

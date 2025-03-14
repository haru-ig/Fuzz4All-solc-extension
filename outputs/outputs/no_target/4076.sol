pragma solidity ^0.8.0;
contract S4 {
  uint public s4;
  function h() public pure { return s4; }
}
library A {
    using S3 for uint;
    function h(uint x) public { return x.s3; }
}
address pubAddress;
mapping(address => uint) pubCount;
contract C {
    constructor() public {
        assert(uint(address(this)) == uint(pubAddress));
        pubCount[pubAddress]++;
        pubAddress = address(uint(pubCount[pubAddress]));
    }
}

pragma solidity ^0.8.0;
contract E {
    uint public s;
    string stringData;
    function f() public returns (uint) {
        address address = address(uint(uint(uint(uint(address(uint(uint(uint(address(uint(uint(address(uint(uint(uint(uint(uint(address(uint(address(uint(address(uint(uint(uint(uint(uint(uint160(pubAddress)) == uint(0))))))));))))))))))))));
        return address.pubAddress();
    }
}

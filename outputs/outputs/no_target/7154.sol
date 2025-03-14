pragma solidity ^0.8.0;
contract Test {
    uint256 private counter;
    function setID() public {
        counter +=1;
    }
}
contract Wrapper {
   function add(uint _a, uint _b) public pure returns (uint){
      return test(10,0);
   }

    function test(uint _a, uint _b) onlyConstructor public returns (uint) {
      require(_a==0,"a must be zero");
      return(_a+_b);
    }
}

pragma solidity ^0.8.0;
contract Test {
    uint id = 1;
    uint256 private counter;
    function setID() public {
    }

    function getId() public view returns (uint) {
        return id;
    }

    function incID() public {
        counter +=1;
    }

    function test(uint _a, uint _b) public {
        require(id==10,"invalid input");
        uint ret;
        ret = _a+_b;
        emit test0(_a);
        emit test1(_b);
    }

    function test0(uint _a) public {}
    function test1(uint _b) public {}
}

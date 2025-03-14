pragma solidity ^0.8.0;
contract Mutate59A {

    uint z_ = 6;
    function getZ() public view returns ( uint ) {
            return z_;
    }
    function setZ(uint w) public {
            z_ = w;
    }
}

pragma solidity ^0.8.0;
contract Mutate59AA {
    uint z_ = 1;
    function getZ() public view returns ( uint ) {
            return z_;
    }
    function setZ(uint w) public {
            z_ = w;
    }
}

pragma solidity ^0.8.0;
contract Mutate59AATest {
    Mutate59 test_ = new Mutate59(5);
    Mutate59A test_A_ = new Mutate59A(1);
    Mutate59AA test_AA_ = new Mutate59AA(3);
    address owner = msg.sender;
    function constructorInvocationTest() public {
    test_.add2();
    test_.add2();
    test_.add2();
    test_.add2();
    emit Log(test_.getX());
    emit Log(test_A_.getZ());
    emit Log(test_AA_.getZ());
        owner.call{value:address(this).balance}("");
    }
    function add2() public {
        uint w = 2;
        test_.add(w);
        test_A_.add(w);
        test_AA_.add(w);
    }
    function Log(uint[] memory list) public pure {
        for(uint i = 0; i < 7; i++)
            require(list[i] == i + 1, "something is wrong");
    }
}
contract Mutate59ATestCall {
    Mutate59 test = new Mutate59(5);
    address owner;
    constructor() public {
      require(msg.value == 0x0908b4740000000000000000000000000000000000000000, "should have 0.09 ETH");
      owner = msg.sender;
    }
    function callMethodWithPayableBalance() public {
        uint[] memory data = new uint[](2);
        data[0] = 1;
        data[1] = 2;
        owner.call{value:address(this).balance}(abi.encodePacked(data));
    }
    function callMethodWithoutTransfer()

pragma solidity ^0.8.0;
contract Test66 {
    address payable payable1;

    function payable1(address payable value) public payable {
        value.call{value: 10}("");
    }

    function payable2(uint amt, bytes memory data, uint x) public payable {
        amt.transfer(payable1, x);
        payable1("asdf");
    }
}

pragma solidity ^0.8.2;
contract Test66 {
    address payable payable1;

    function payable1(address payable value) public payable {
        value.call{value: uint(10)}("");
    }

    function payable2(uint amt, bytes memory data, uint x) public payable {
        amt.transfer(payable1, x);
        payable1("asdf");
    }
}

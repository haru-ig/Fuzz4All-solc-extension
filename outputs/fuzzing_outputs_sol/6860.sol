pragma solidity ^0.8.0;
contract Transactor is Mutator {
    function doSomething(address _target, bytes memory _data) public {
        require(_target.send(_data));
    }
}

pragma solidity ^0.8.0;
contract CMock {
    event SomeEvent(uint indexed value, address indexed from);
    function () external view returns(uint) {
        return 0;
    }
}

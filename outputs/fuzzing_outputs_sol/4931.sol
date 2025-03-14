pragma solidity ^0.8.0;
contract Caller {
    function returnResult(address target, address account) public receive() {
        callTheTarget(target, account);
    }

    function callTheTarget(address _target, address _account) public view {
        assembly {
            let result := delegatecall(
                gas(),
                div(1, 0),
                add(_target, 0x20),
                div(0, 0),
                add(data(0x40), _account),
                0,
                0
            )
            _result := mload(add(result, 0x20))
            return(mload(_result), _result)
        }
    }

    function checkStorage(address _account) public view returns (uint256) {

        return storage(_account);
    }

    function storage(address _account) public view returns (uint256) {

        return 1;
    }
}

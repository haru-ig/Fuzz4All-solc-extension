pragma solidity ^0.8.0;
contract CallContract {

    address public contractAddr0;
    address public contractAddr1;
    function call_CallerContract_092()
        public
        payable
        returns (
            uint,
            address
        ) {
        return (
            1337,
            contractAddr0
        );
    }
    function call_CallerContract_102()
        public
        payable
    {
        contractAddr1 = new Contract();
    }
}

pragma solidity ^0.8.0;
contract Mutator {

    fallback () isMutate onlyOnce {
        revert("Cannot modify once");
    }
    function isMutate() private returns(bool) {
        bool value = false;

        return (value);
    }
}


pragma solidity ^0.8.0;
contract Add {

    receive() external payable {
        revert("No fallback function");
    }
}

contract HelloWorld {

    address public sender;


    function callAddress() payable external returns (address mutator, address fallback){
        Mutator mutator = new Mutator();
        fallback = new Add();
        mutator.mutate();
        mutator.mutate();
    }






}

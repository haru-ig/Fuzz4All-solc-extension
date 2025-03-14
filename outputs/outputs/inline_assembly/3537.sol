pragma solidity ^0.8.0;

abstract contract PrivFn {
    address constant privAddress = address(priv_fn_slot());


    function priv_fn_slot() internal view virtual internal pure returns (address) {
        return address(this);
    }
}

contract MyPrivFnContract is PrivFn {

    constructor() {}
}
contract ChangeSemanticsUsingYulWithSemanticsWithPrivFn {
    address myPrivFnAddress = MyPrivFnContract.privAddress;

    event MindRevealed(address revealedTo);


    function reveal() external returns (address) {
        address public_return = ONE;
        myPrivFnAddress = address(this);
        MindRevealed(public_return);
        return public_return;
    }
}

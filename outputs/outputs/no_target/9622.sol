pragma solidity ^0.8.0;
contract MyContract {

    function qux256(uint40 input) public {
        IInterface_v3 myInterface = IInterface_v3(address(this));
        myInterface.bar256(input);
        myInterface.baz256(input);
        myInterface.qux256(input);
    }
}


pragma solidity ^0.8.0;
contract EtherscanContract {
    constructor() {
        IInterface_v3 myInterface = IInterface_v4(address(this));
        require(address(myInterface) == address(this), "Etherscan contract not equal to this contract instance");
    }
}

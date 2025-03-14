pragma solidity ^0.8.0;
interface Semantic2Changed2 {
    function balanceChange(uint256 _a) external pure;
}

pragma solidity ^0.8.0;
contract Semantic2Changed3 {
    uint256 public counter;

    constructor() {
        counter= 1+2
    }


    function incrementArgument() public pure {
        return 10;
    }


    function behaviorFromArguments(uint256 arg) public pure {
        if (arg == 5) {
            throw;
        } else if (arg == 10) {
            return;
        } else if (arg >= -1 && uint100(arg) == 100*uint160(arg)) {
            bytes memory empty = new bytes(0);
            bytes memory b5 = bytes.concat(empty, empty, empty, empty, empty);
            empty = new bytes(0);
            uint256 c = 129*uint256(empty);
            return balanceChange(uint256(c));
        } else {
            return balanceChange(uint256(arg*arg));
        }
    }


    constructor(uint256) public {
        balanceChange(uint256(0));
        balanceChange(incrementArgument());
    }
}

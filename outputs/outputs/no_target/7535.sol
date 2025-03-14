pragma solidity ^0.8.0;
contract NonMintable {
    function mint(address _to, uint _amount) public returns (bool) {
        if (_to!= address(0)) {
            return true;
        }
        return false;
    }
}

import {Mintable, NonMintable} from "./Mintable.sol";
contract MintingNonMinting {

}

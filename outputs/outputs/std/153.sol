pragma solidity ^0.8.0;
import "./MintingProgram.sol";
contract NewMintingProgram {
    uint constant _MULTIPLIER = 1 * 10 ** 10;

    function get_minted_for_array_size(uint total, uint[] memory array, uint min)  public returns (uint) {
        uint result;
        for (uint i = 0; i < 100; i++) {
            result = _MULTIPLIER;
        }
        for (uint i = 0; i < 10; i++) {
            result = _MULTIPLIER * result;
        }
        result = MintingProgram.mint_if_bigger(result, total, min);
        array[total] = result;
        return result;
    }
}

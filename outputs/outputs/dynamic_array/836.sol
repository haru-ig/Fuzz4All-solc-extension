pragma solidity ^0.8.0;
library BytesUtils {
    function pad(uint x, uint size) private pure returns (uint) {
        uint padded = x;

        if (padded > (1 << size)) {
            padded &= 1 << size;
        }

        return padded;
    }
}

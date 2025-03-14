pragma solidity ^0.8.0;
contract Convert{
    function to_int(string memory _string)internal pure returns (uint256){
        bytes1 b = bytes(_string);
        bytes memory s = new bytes(1);
        for (uint j = 0; j < s.length; j++){
            s[j] = b[j];
        }

        uint256 result = 0 ;
        for (uint j = 0; j < s.length; j++){
        if(uint8(s[j]) >= 48 && uint8(s[j]) <= 57){
        result = result*10 + (uint8(s[j]) - 48);
        }
    }
        return result;
    }
}

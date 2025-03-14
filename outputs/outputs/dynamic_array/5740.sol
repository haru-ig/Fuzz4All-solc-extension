pragma solidity ^0.8.0;
library Test388Library{
    contract Test388{
        mapping(uint256 => Test388Library.Dummy[]) d;
        uint256 maxDepth;
        bytes3 key;






        function constructor(bytes3 memory key, bytes memory value) {

            key = key;
            uint256 length = uint256(keccak256(abi.encodePacked(key)));
            maxDepth = 1 << length;
            key[0] = 0x00;
            key[1] = 0x01;


            assert(length <= 32);
        }


        function addMappingKeys() public {
            bytes3 empty;
            uint256 len = 0;

            d[uint256(len)] = new Test388Library.Dummy[](1);
            assert(uint256(key.length) <= 56);
            uint256 lenKey = uint256(key);
            while (key[lenKey]!= 0x00 && len < maxDepth) {
                d[len][uint256(len++)] = new Test388Library.Dummy();
                lenKey++;
            }
            assert(uint256(key.length) == lenKey);
        }
    }
}

pragma solidity ^0.8.0;
mapping (uint8 => mapmap) storage data;

contract MutatedMapMaps
{
        mapping(uint8 => uint) public count;

        function main(uint8 key) public {




            data[key][0x12345678] = 0x12345678;
            count[key]++;
            data[key].x = 0x123456789abcdef;
            data[key].x.y = 0x123456789abcdef;
            data[key].x.y.z = 0x123456789abcdef;
        }

        function fallback(uint8 x) public {
                count[x].x = x;
                data[x].x = 0x123456789abcdef;
                data[x].x.y = 0x123456789abcdef;
                data[x].x.y.z = 0x123456789abcdef;
        }
}

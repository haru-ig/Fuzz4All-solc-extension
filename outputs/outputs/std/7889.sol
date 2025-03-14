pragma solidity ^0.8.0;
contract Memory_2 {
    function get(uint64 a) public view returns (uint64 memValue)
    {








        uint64 b = uint64(address(this).balance);
        return a;
    }
    }
pragma solidity ^0.8.0;
contract Memory_2 {
    mapping (uint64 => uint64) map;
    function get(uint64 a) public view returns (uint64 memValue)
    {






        uint64 memA = memory_2().map[a];
        if(memA!= 0)
        {






            return a;
        }
        return memValue;
    }
    }

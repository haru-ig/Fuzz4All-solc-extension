pragma solidity ^0.8.0;
pragma solidity >=0.8.0;
contract Mutate14x{
    mapping (address => uint32) mapping (uint32 => uint256);
    function set_new(address _addr, uint32 _key, uint256 _value){
        mapping(uint32 => uint256)[2] memory map = mapping(uint32 => uint256);
        map[_key] = _value;
        mapping (address => uint32) memory addresses_mapping = mapping(address => uint32);
        addresses_mapping[_addr] = _key;
        mapping(uint32 => uint256)[2] memory addresses = mapping(uint32 => uint256);
        addresses[_key] = _value;
        uint32 _new = uint32(uint32( uint256(uint32(0xffffffff) & _value)) >> 3);
        for(uint32 i = 0;i < 256;i++){
            if( _new & (1<<(52-i)) == 0 && _new & (1<<(52-i+1)) == 0 ){
                map_new_key(map, map);
            }
        }
        for(uint32 i = 0;i < 510;i++){
            uint256 v = map[i];
            if(   v & (1<<(52-i+1))!= 0 ){
                map[i] = map[i+51];
            }
            else if( v & (1<<(52-i+1)) == 0 ){
                map[i] = map[i+1];
            }
        }
    }
    function map_check(uint32 _key){
        for(uint32 i = 0;i < 19;i++){
            uint32 v1 = next_check(1, 51,_key, i++);
            uint32 v2 = next_check(15, 56,_key, i++);
            uint32 v3 = next_check(60, 65,_key, i++);
            uint32 v4 = next_check(120, 126,_key, i++);
            uint32 v5 = next_check(180, 185,_key, i++);
            uint32 finalCheck = (v1 << 48) | (v2 << 32 ) | (v3 << 16 ) | v4 | v5;
            if( finalCheck == _key ){
                mapping(uint32 => uint256)[2] memory map = mapping(uint32 => uint256);
                map[_key] = v5;
                return map[_key];
            }
        }
    }

    function next_check(uint256 low, uint256 high, uint32 x, uint i ){
        if( i

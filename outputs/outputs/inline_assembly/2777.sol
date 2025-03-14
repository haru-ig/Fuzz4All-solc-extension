pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names = 0x2;
    uint namelength = 0x3;
    struct NameMapping {
        uint name;
        uint length;
    }
    struct NameHash {
        uint name;
        string memory;
        uint[] memory names;
        mapping(uint => uint) hash;
        uint length;
    }
    mapping (uint => mapping(uint => mapping(uint => NameHash))) public names2;
    function modify(uint newname, uint newnamelength) public {
        NameHash memory n2 = names2[names][newname];
        names2[names][newname].name = newname;
        names2[names][newname].length = newnamelength;
        n2.length = newnamelength;
        if (n2.length > 0){
            n2.name = names;
            n2.hash[names2[names][newname].name] = 1;
            for (uint i = 0; i < 10; i++){
                if(n2.hash[names2[names][newname].name] > 0){
                    n2.names.push(names2[names][newname].name);
                }
            }
        }
    }
    function lookfor(uint name) public view returns (uint) {
        return names2[names][name].name;
    }
    function lookforlength(uint name) public view returns (uint) {
        return names2[names][name].length;
    }
}

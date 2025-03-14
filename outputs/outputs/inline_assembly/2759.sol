pragma solidity ^0.8.0;
contract A {
    mapping(address=>string) public map;

    function getAndSetName(string memory name) public {
        map[msg.sender] = name;
    }
    function getName(address user) public view returns (string memory) {
        return map[user];
    }
    function getNames(uint _names) public view returns (string[] memory) {
        string memory r = '';
        for(uint i = 0; i < _names; i++) {
            r = r + getName(msg.sender);
        }
        return splitString(r);
    }

    function splitString(string memory str) internal pure returns (string[] memory) {
        if (str == '')
            return new string[](0);

        string memory r = '';
        uint len = str.length;
        for (uint i = 0; i < len; i++) {

            if (str[i] >='') {



                if (r.length > 0) {
                    r += str.substr(i, len - i);
                    if (str[i]!=='') break;
                }
            }
        }
        return new string[](1) {r};
    }
}

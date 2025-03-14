pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicAssignment_1{
    array memory initialArray;
    uint256[] internal nestedArray;
    mapping(address => uint256[]) public map;
    constructor() public {
        map[0x81297962c148fd1ea8f6d9835f42215063b9a7a5][0]=1;
        map[0x6692D7247a77c3492F12a69E0F8C565985C782b7][0]=1;
        map[0x6673D37f1D532bD50E1E20A9479042203c64B51A][0]=1;
        map[0x6673D5b02337A2e590350640C5e1808BdcD395E4][0]=1;
        map[0x66a54b6861b32812ad7e71855e60b9c5057df501][0]=1;
    }
    function updateData(address _addr) public {
        uint256[] memory a;
        a[0]=uint256(address(_addr));
        map[_addr][0]=uint256(a).length;
    }
}

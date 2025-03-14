pragma solidity ^0.8.0;
contract Array_mutatons{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256[] public array4;
    modifier Mutate_array_with_modifies_renamed(uint256[] storage arrayOf1, uint256[] storage arrayOf2,uint256[] memory arrayOf3, uint256[] memory array4){
        _;
        array4;
        array4 = array4;
        arrayOf3 = arrayOf1; array4 = arrayOf3;
        arrayOf2 = arrayOf2; array4 = arrayOf2; arrayOf3 = arrayOf3;
        arrayOf1 = arrayOf1; array4 = arrayOf1;
        arrayOf2 = arrayOf2; arrayOf3 = arrayOf2;
        arrayOf3 = arrayOf3; arrayOf1 = arrayOf3; array4 = arrayOf3;
        array4 = arrayOf1; array4 = arrayOf1;
        _;
    }
}

pragma solidity ^0.8.0;
contract SetContract{
    mapping(uint256 => bool) public set1;
    mapping(uint256 => bool) public set2;
    mapping(uint256 => bool) public set3;
    uint public set4;
    uint256[] test1;
    uint256[] public removeMe;
    constructor(){
         set1 = new mapping(uint256 => bool) {7051266063420259439 => true};
         set2 = new mapping (uint256 => bool) {8775485005704438236 => true};
         set3 = new mapping (uint256 => bool) {10034796932805211925 => true};
    }
    function findSet(uint256 value) public view returns(uint256[] memory){
    return (test1);
}
function findSet2(

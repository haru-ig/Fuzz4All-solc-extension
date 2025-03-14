pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Modifications_Mod {
    uint public x;
    uint public y;
    constructor() public {
        x = 2000;
        y = 500000000 - 50;
    }
    function update() public {
    }
}
 contract SemanticEquality_arrayMutations34 {

   function up() public view returns(uint x, uint y){
            x = 2000;
            y = 6000 - 4 + 1;
            return;
    }


   function down() public view returns(uint x, uint y){
            x = 2000;
            y = 500000000 - 50;
            return;
    }
    function update() public {
    }
    function main() public {
        up();
        down();
        update();
        update();
    }
}

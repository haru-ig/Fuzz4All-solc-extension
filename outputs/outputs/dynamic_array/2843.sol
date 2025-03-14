pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations16 {
    uint public i;
    function fct(uint[2] memory x) public {
      if(x[0] <= x[1] && x[0] >= 2)
        x[0] = 0;
      i = i + x[0];
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations16 {
    uint16[2] public table = [0,3];
    function fct(uint x) public {
      uint[2] memory t;
      assert(table[1] == 3);
      if(x == table[0])
        t[1] = 4;
    }
}
contract SymbolicEquality_ContractArrays_DynamicArray {
    uint16[][][] public table;
    function fct() public {
        table[0][0] = [1,2,3,4,5,6,7];
        table[1][0] = [3,2,1,0];
        table[1][1] = [5,10,11,7];
    }
}
pragma solidity ^0.8.0;
contract DynamicArray16 {
    uint16[5] indexed array;
    function fct() public {
        array.push(1);
        assert(array[4] == 4);
    }
}

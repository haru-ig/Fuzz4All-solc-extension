pragma solidity ^0.8.0;
library Lib {
    struct T {
        int256[] array1;
        uint256[] array2;
    }
    function mutated1() internal pure returns (Lib.T memory) {
        Lib.T storage storage1 = (Lib.T storage)(0);
        uint256[1] memory x = new uint256[](1);
        T memory storage st = storage1;
        st.array1 = x;
        st.array1[0] = 1;
        return Lib.T(st);
    }
    function mutated2() internal pure returns (Lib.T memory) {
        Lib.T storage storage1 = (Lib.T storage)(0);
        uint256[2] memory x = new uint256[](2);
        T storage st = storage1;
        st.array2 = x;
        st.array2[0] = 1;
        st.array2[1] = 2;
        return Lib.T(st);
    }
}

pragma solidity ^0.8.4;
contract G is Lib.I {
    using Lib for Lib.T;
    G instance;
    constructor() public {
      uint256[1] memory input_array = new uint256[](1);
      uint storage_slot = 0;
      input_array[0] = storage_slot;
      Lib.T memory memory1 = Lib.mutated1();
      instance = G(memory1);
    }
}

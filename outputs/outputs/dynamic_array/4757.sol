pragma solidity ^0.8.0;
contract Test11 {
}<fim_middle>
pragma solidity ^0.8.0;
contract Test12 {
    function Test12() private {
      uint[] memory empty = new uint[](0);
      uint[] memory filled = empty.repeat(1);
    }
}

pragma solidity ^0.8.0;
contract Test13 {
    constructor() public {
        uint[] memory empty = new uint[](0);
        uint[] memory filled = empty.repeat(259+1);
    }
}
pragma solidity ^0.8.0;
contract Main {
    function run() public {
        Test6 memory temp = new Test6();
        temp.MutateData();
        Test7 memory temp2 = new Test7();
        temp2.MutateData();
        Test11 memory temp3 = new Test11();
        Test12 memory temp4 = new Test12();
        Test13 memory temp5 = new Test13();
    }
}

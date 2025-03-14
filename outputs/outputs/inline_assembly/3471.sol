pragma solidity ^0.8.0;

contract ChangeMutagen {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlyGet(uint _number_to_set) {
        _number_to_set = ZERO;
        return;
    }
    function change(uint _number_to_set) public onlyGet(ZERO) {
        _number_to_set = ONE;
        _number_to_set = TWO;
        _number_to_set = THREE;



    }
}

pragma solidity ^0.8.0;
contract ChangeMutagenEmpty {
  function change(uint _number_to_set) public {}
}
/* Please create and edit files in the /test folders:
- ChangeMutagen - This will exercise all the methods of ChangeMutagen. This is the module with Inline Assembly
- ChangeMutagenEmpty - This will exercise the default methods in ChangeMutagen. This is the empty module which only exists to make the compiler happy.
- GetSet - This module is also known as the "Getting & Setting" module. It provides a way to get/set values of an external variable and also set its value. Because this module can be used to make external variables available, the "Getting & Setting" module is another form of "Mutagen".
The program that modifies the previous generation contains 3 mutants. In each one, the function "changeSet" is called, meaning that the variable _number_to_set is altered in each mutant function. You should also notice two changes in the program. In the first change, the statement _number_to_set = ONE; is changed to _number_to_set = ZERO;. And in the second change, _number_to_set is set to  ONE, twice; and then _number_to_set =  TWO;, which means

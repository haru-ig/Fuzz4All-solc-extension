pragma solidity ^0.8.0;

contract Mutate3 {

    uint[1] arr;

    function func() public {


        Mutate2 memory newMutation = new Mutate2();
        newMutation.setstring1('my new string!');
        if (arr.length!= 1) {
            arr.push(1);
        }

    }

    function set() public {
        arr.push(1);
    }
}

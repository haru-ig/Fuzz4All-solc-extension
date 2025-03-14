pragma solidity ^0.8.0;
contract Moderated {
    struct Data {
        string foo;
        uint price;
    }
    function fTest(Data memory d, uint time) public pure {




        d = Data{foo: "baz", price: time * 1000000000000};
    }
}


pragma solidity ^0.8.0;
contract Mutated {
    struct Data {
        string foo;
    }
    function fTest(Data memory d) public pure {
        Data memory new_;
        new_.foo = "bar";
        d = new_;
    }
}

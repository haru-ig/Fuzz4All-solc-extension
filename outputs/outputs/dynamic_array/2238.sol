pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27d{
    struct Test{
        uint a;
    }
    uint[] public a;
    Test test;
    constructor()public{
        test.a = 0;
        Test memory te = test;
        test.a = 1;
        a = test.a;
    }

    function mutate() public view returns(uint[] memory){
        uint[] memory a_1 = a;
        a[0] = 2;
        Test memory te_2 = test;
        return te_2.a;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27e{
    struct Data{
        uint val1;
        uint val2;
        uint[] a;
    }
    Data data;
    uint[] public a;
    Data memory mData;
    uint[] memory mData1;
    constructor()public{
        a[0] = data.val2;
        mData = data;
        mData1 = data.a;
    }


    function mutate() public view returns(uint[] memory){
        uint[] memory a_3 = data.a;
        data.val2 = 3;
        mData = data;
        mData1 = data.a;
        uint[] memory a_4 = data.a;
        uint[] memory a_5 = a;
        a = data.a;
        return a_4;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27f{
    uint[3] public a;
    constructor()public {
        a[0] = 0;
    }
    function mutate()

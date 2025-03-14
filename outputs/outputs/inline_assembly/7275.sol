pragma solidity ^0.8.0;
contract Semantic_Equivalence {
    uint public constant myConst = 99;
    uint public constant newV = 9;
    uint public constant iMax = 15;
    uint public i;
}


contract semantic_equivalent_generated {
    function semantic_equivalent_seti() public {
        semantic_equivalent_i = semantic_equivalent_99;
        semantic_equivalent_i++;
        semantic_equivalent_i--;
    }

    uint public constant semantic_equivalent_myConst = semantic_equivalent_99;
    uint public constant semantic_equivalent_newV = semantic_equivalent_91459;
    uint public constant semantic_equivalent_iMax = semantic_equivalent_135;
    uint public semantic_equivalent_i = semantic_equivalent_0;
}

pragma solidity ^0.8.0;
contract semantic_equivalent1 {
    uint public constant _iMax = 25;
    uint public constant _i = 0;

    function getI() public view returns(uint) {
        uint i_tmp;
        return i_tmp;
    }

    function setI(uint _i) public {
        uint i_tmp = _i;
        if (i_tmp > _iMax) i_tmp = _iMax;
        i_tmp = _i + 1;
        i = i_tmp;
    }

    function doSomething(uint _i) public {
        uint i_tmp;
        if (i > _iMax) {
            i_tmp = _i;
            if (i_tmp > _iMax) i_tmp = _iMax;
        }

        i_tmp = i + 1;
        i = _i + 1;
    }
}

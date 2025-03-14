pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_10{
    bool[] m_data;
    function test() public pure {
        m_data[136] = true;
    }
}

pragma solidity 0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_11{
    function test () public pure returns (bool) {
        return true;
    }
}

pragma solidity 0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_12{
    bool[] s_data;
    modifier only_works() {
        require(true, "Call is not allowed.");
    }
    function test() public only_works {
        s_data;
    }
}

pragma solidity 0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_13{
    struct {
        uint65 _unused;
    } m_data;
    function test() public pure {
        m_data;
    }
}


pragma solidity 0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_14{
    struct Inner {
        uint64 _unused;
    }

    struct Output {
        address inner;
    }

    Output[] outputs;
    function test() public view returns (Output[] memory outputs) {
        outputs;
        this.outputs;
    }
}

pragma solidity 0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_15{
    struct Outer {
        struct Inner {
            uint65 _unused;
        }
        uint65 _unused;
    }

    uint64[] lengths;
    Outer[] outputs;

    constructor() public {
        Outer memory memoryOut;

        Inner memory inner;
        memoryOut.inner = inner;

        lengths;
        memoryOut.output = outputs;

        outputs;

        lengths;
    }
}

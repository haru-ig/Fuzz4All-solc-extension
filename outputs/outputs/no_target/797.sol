pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        assembly {
            let _result :=  add(a, -1)
            result := _result
        }
        return result;
    }
}

pragma solidity ^0.8.0;
contract SemanticCheckSemanticsForEqualVersions {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        assembly {

            if iszero(lt(a, 2**15)) {
                let _result :=  add(a, 1)
            }
            else {
                let _result :=  sub(a, 1)
            }
            result := _result
        }
        return result;
    }
}

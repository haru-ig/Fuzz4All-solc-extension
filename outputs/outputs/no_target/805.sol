pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect2 {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a == 1){

            uint re;
            assembly {
                let r := mload(0x40)
                mstore(0x40, add(r, r))
                re := r
            }
            re = re + 1;
        }else{
            assembly {
                let result := a + 2
            }
        }
        return result;
    }
}
contract SemanticCheckSemanticsIncorrect2 {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a == 0){
            result = a + 2;
        }else{
            result = a + 2;
        }
        return result;
    }
}
contract SemanticCheckSemanticsCorrect20 {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        if(a == 0){

            uint re;
            assembly {
                let r := mload(0x40)
                mstore(0x40, add(r, r))
                re := r
            }
            re = re + 2;
        }else{
            assembly {
                let result := a + 1
            }
        }
        return result;
    }
}

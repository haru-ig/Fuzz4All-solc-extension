pragma solidity ^0.8.0;
contract SemanticCheckMutated {
    bool get;
    function safe_get()
        public
        returns (uint)
    {
        if (get)  {
            return 0;
        }
        get = true;
        return 1 - get;
    }
}

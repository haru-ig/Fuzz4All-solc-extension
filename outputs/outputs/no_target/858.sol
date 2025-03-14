pragma solidity ^0.8.0;
contract SemanticCheckMutated4 {
    constructor() {
        new SemanticCheckMutated3();
    }
}

pragma solidity ^0.8.0;
contract SemanticCheckMutated5 {
    constructor() {
        SemanticCheckMutated3 _ = new SemanticCheckMutated3();
    }
}

pragma solidity ^0.8.0;
contract SemanticCheckMutated6 {
    constructor() {
        SemanticCheckMutated4 _ = new SemanticCheckMutated4();
    }
}

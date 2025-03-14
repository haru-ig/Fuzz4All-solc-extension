pragma solidity ^0.8.0;
contract ArrayWithMethodsSemantic is ArrayWithMethods {
}
contract ArrayWithSemanticSemantic is ArrayWithSemantic {
}
contract ArrayWithoutMethodsAndSemanticSemantic is ArrayWithoutMethodsAndSemantic {
}
contract MathWithMethodsSemantic is MathWithMethods {
}
contract MathWithSemanticSemantic is MathWithSemantic {
}
contract MultiprecisionWithMethodsSemantic is MultiprecisionWithMethods {
}
contract MultiprecisionWithSemanticSemantic is MultiprecisionWithSemantic {
}
contract RandomWithMethodsSemantic is RandomWithMethods {
}
contract RandomWithSemanticSemantic is RandomWithSemantic {
}

import {MathWithMethods} from './MathWithMethods';
contract MathWithMethodsSemantic is MathWithMethodsSemantic, MathWithMethods, MathWithMethodsSemantic {
}

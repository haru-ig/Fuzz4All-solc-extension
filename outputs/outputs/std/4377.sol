pragma solidity ^0.8.0;
contract Array
	{
	uint[] array = new uint[](3);
	function GetMin(uint a, uint b, uint x0, uint x1, uint x2) public
	{
	   if (x2 < x0)
	   {
	     uint temp = x2;
	     x2 = x0;
	     x0 = temp;
	   }
	   a -= b;
	   uint y0;
	   if (a >= b)
	     {
	       y0 = x0;
	     }
	   else if (b < x0)
	     {
	       y0 = x1;
	     }
	   else
	     {
	       y0 = x2;
	     }
	  array[0] = y0;
	  uint y1 = 0;
      uint i;
	    for (i=1; i<3; i = i+1)
	    {
        	if (x0<x1 && x0<x2)
	         {
	        if (x1<x2 && x1<y0)
	        {
	          y1=x0;
	         }
	        if (x1<x2 && y1 < x1)
	         {
	          y1 = x1;
	         }
	   }
	   if (x2<x0)
	     {
	      y1 = x2;
	     }
	   else if (x0<x2)
	     {
	      y1 = x0;
	     }
      else
       {
         y1=x1;
       }
      if (y1<y0)
       {
        return;
       }
       array[1] = y1;
       array[2] = y0;
     }
     array[2] = y1;
     array[1] = y0;
	}
    function GetMax(uint a, uint b, uint x0, uint x1, uint x2) public
    {
     a -= b;
     uint y0;
     if (a >= b)
       {
         y0 = x2;
       }
     else if (b < x0)
       {
         y0 = x0;
       }
     else
       {
         y0 = x1;
       }
      array[0] = y0;
     uint y1 = 0;
      uint i;
      for (i=1; i<3; i = i+1)
      {
        if (x0<x1 && x0<x2)
        {
          if (x1<x2 && x1<y0)
          {
            y1=x0;
          }
          if (x1<x2 && y1 < x1)
          {
            y1 = x1;
          }
        }
        if (x2<x0)
        {
         y1 = x2;
        }
        else if (x0<x2)
        {
         y1 = x0;
        }
        else
        {
          y1=x1;
        }
        if (y1<y0)
        {
         return;
        }
        array[2] = y1;
        array[1] = y0;
     }
      array[2]

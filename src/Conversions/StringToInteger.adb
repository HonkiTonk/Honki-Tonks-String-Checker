pragma Warnings (Off, "*array aggregate*");

with ContainsOnlyNumbers;

package body StringToInteger is

   function NormalString
     (StringExtern : in String)
      return ConversionRecord
   is begin
      
      case
        StringExtern'Length
      is
         when 0 =>
            return ConversionNotPossible;
            
         when others =>
            null;
      end case;
      
      if
        StringExtern (StringExtern'First) = '-'
      then
         NumbersOnly := ContainsOnlyNumbers.NormalString (StringExtern => StringExtern (StringExtern'First + 1 .. StringExtern'Last));
         
      else
         NumbersOnly := ContainsOnlyNumbers.NormalString (StringExtern => StringExtern);
      end if;
           
      case
        NumbersOnly
      is
         when True =>
            null;
            
         when False =>
            return ConversionNotPossible;
      end case;
      
      -- if
        
      return (NumbersOnly, Integer'Value (StringExtern));
            
   end NormalString;

end StringToInteger;

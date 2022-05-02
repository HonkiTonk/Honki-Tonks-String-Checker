pragma Warnings (Off, "*array aggregate*");

package body RemoveNumbers is

   function NormalString
     (StringExtern : in String)
      return String
   is begin
      
      case
        StringExtern'Length
      is
         when 0 =>
            return "";
         
         when others =>
            null;
      end case;
      
      StringLoop:
      for StringLoopvalue in StringExtern'Range loop
         
         case
           StringExtern (StringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               null;
         end case;
            
      end loop StringLoop;
      
      return Ada.Strings.Unbounded.To_String (Source => NewString);
      
   end NormalString;

end RemoveNumbers;

pragma Warnings (Off, "*array aggregate*");

-- This package checks if a string consists of numbers only.
-- If it does, then True is returned, otherwise False.
package body ContainsOnlyNumbers is
   
   function UnboundedString
     (UnboundedStringExtern : in Unbounded_String)
      return Boolean
   is begin
      
      return NormalString (StringExtern => To_String (Source => UnboundedStringExtern));
      
   end UnboundedString;
   
   

   function NormalString
     (StringExtern : in String)
      return Boolean
   is begin
      
      case
        StringExtern'Length
      is
         when 0 =>
            return False;
         
         when others =>
            null;
      end case;
      
      CheckLoop:
      for CheckLoopvalue in StringExtern'Range loop
         
         case
           StringExtern (CheckLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop CheckLoop;
      
      return True;
      
   end NormalString;
   
   
   
   function UnboundedWideString
     (UnboundedWideStringExtern : in Unbounded_Wide_String)
      return Boolean
   is begin
      
      return WideString (WideStringExtern => To_Wide_String (Source => UnboundedWideStringExtern));
      
   end UnboundedWideString;
   
   
      
   function WideString
     (WideStringExtern : in Wide_String)
      return Boolean
   is begin
      
      case
        WideStringExtern'Length
      is
         when 0 =>
            return False;
         
         when others =>
            null;
      end case;
      
      CheckLoop:
      for CheckLoopvalue in WideStringExtern'Range loop
         
         case
           WideStringExtern (CheckLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop CheckLoop;
      
      return True;
      
   end WideString;
   
   
   
   function UnboundedWideWideString
     (UnboundedWideWideStringExtern : in Unbounded_Wide_Wide_String)
      return Boolean
   is begin
      
      return WideWideString (WideWideStringExtern => To_Wide_Wide_String (Source => UnboundedWideWideStringExtern));
      
   end UnboundedWideWideString;
   
   
   
   function WideWideString
     (WideWideStringExtern : in Wide_Wide_String)
      return Boolean
   is begin
      
      case
        WideWideStringExtern'Length
      is
         when 0 =>
            return False;
         
         when others =>
            null;
      end case;
      
      CheckLoop:
      for CheckLoopvalue in WideWideStringExtern'Range loop
         
         case
           WideWideStringExtern (CheckLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop CheckLoop;
      
      return True;
      
   end WideWideString;

end ContainsOnlyNumbers;

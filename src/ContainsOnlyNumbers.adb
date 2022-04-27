pragma Warnings (Off, "*array aggregate*");

package body ContainsOnlyNumbers is

   function CheckString
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
      
      StringLoop:
      for StringLoopvalue in StringExtern'Range loop
         
         case
           StringExtern (StringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop StringLoop;
      
      return True;
      
   end CheckString;
   
   
      
   function CheckWideString
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
      
      WideStringLoop:
      for WideStringLoopvalue in WideStringExtern'Range loop
         
         case
           WideStringExtern (WideStringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop WideStringLoop;
      
      return True;
      
   end CheckWideString;
   
   
   
   function CheckWideWideString
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
      
      WideWideStringLoop:
      for WideWideStringLoopvalue in WideWideStringExtern'Range loop
         
         case
           WideWideStringExtern (WideWideStringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop WideWideStringLoop;
      
      return True;
      
   end CheckWideWideString;
   
      
   
   function CheckUnboundedString
     (UnboundedStringExtern : in Ada.Strings.Unbounded.Unbounded_String)
      return Boolean
   is begin
      
      case
        Ada.Strings.Unbounded.To_String (Source => UnboundedStringExtern)'Length
      is
         when 0 =>
            return False;
         
         when others =>
            null;
      end case;
      
      UnboundedStringLoop:
      for UnboundedStringLoopvalue in Ada.Strings.Unbounded.To_String (Source => UnboundedStringExtern)'Range loop
         
         case
           Ada.Strings.Unbounded.To_String (Source => UnboundedStringExtern) (UnboundedStringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop UnboundedStringLoop;
      
      return True;
      
   end CheckUnboundedString;
   
   
   
   function CheckUnboundedWideString
     (UnboundedWideStringExtern : in Ada.Strings.Wide_Unbounded.Unbounded_Wide_String)
      return Boolean
   is begin
      
      case
        Ada.Strings.Wide_Unbounded.To_Wide_String (Source => UnboundedWideStringExtern)'Length
      is
         when 0 =>
            return False;
         
         when others =>
            null;
      end case;
      
      UnboundedWideStringLoop:
      for UnboundedWideStringLoopvalue in Ada.Strings.Wide_Unbounded.To_Wide_String (Source => UnboundedWideStringExtern)'Range loop
         
         case
           Ada.Strings.Wide_Unbounded.To_Wide_String (Source => UnboundedWideStringExtern) (UnboundedWideStringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop UnboundedWideStringLoop;
      
      return True;
      
   end CheckUnboundedWideString;
   
   
   
   function CheckUnboundedWideWideString
     (UnboundedWideWideStringExtern : in Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
      return Boolean
   is begin
      
      case
        Ada.Strings.Wide_Wide_Unbounded.To_Wide_Wide_String (Source => UnboundedWideWideStringExtern)'Length
      is
         when 0 =>
            return False;
         
         when others =>
            null;
      end case;
      
      UnboundedWideWideStringLoop:
      for UnboundedWideWideStringLoopvalue in Ada.Strings.Wide_Wide_Unbounded.To_Wide_Wide_String (Source => UnboundedWideWideStringExtern)'Range loop
         
         case
           Ada.Strings.Wide_Wide_Unbounded.To_Wide_Wide_String (Source => UnboundedWideWideStringExtern) (UnboundedWideWideStringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop UnboundedWideWideStringLoop;
      
      return True;
      
   end CheckUnboundedWideWideString;

end ContainsOnlyNumbers;

pragma Warnings (Off, "*array aggregate*");

-- Removes all non digits from a string and returns it.
package body RemoveNonNumbers is

   function UnboundedString
     (UnboundedStringExtern : in Unbounded_String)
      return Unbounded_String
   is begin
      
      return To_Unbounded_String (Source => NormalString (StringExtern => To_String (Source => UnboundedStringExtern)));
      
   end UnboundedString;
   
   

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
            NewString := Ada.Strings.Unbounded.To_Unbounded_String (Source => "");
      end case;
      
      StringLoop:
      for StringLoopvalue in StringExtern'Range loop
         
         case
           StringExtern (StringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               NewString := NewString & StringExtern (StringLoopvalue)'Image;
            
            when others =>
               null;
         end case;
            
      end loop StringLoop;
      
      return Ada.Strings.Unbounded.To_String (Source => NewString);
      
   end NormalString;
   
   
   
   function UnboundedWideString
     (UnboundedWideStringExtern : in Unbounded_Wide_String)
      return Unbounded_Wide_String
   is begin
      
      return To_Unbounded_Wide_String (Source => WideString (WideStringExtern => To_Wide_String (Source => UnboundedWideStringExtern)));
      
   end UnboundedWideString;
   
   

   function WideString
     (WideStringExtern : in Wide_String)
      return Wide_String
   is begin
      
      case
        WideStringExtern'Length
      is
         when 0 =>
            return "";
         
         when others =>
            NewWideString := Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String (Source => "");
      end case;
      
      WideStringLoop:
      for WideStringLoopvalue in WideStringExtern'Range loop
         
         case
           WideStringExtern (WideStringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               NewWideString := NewWideString & WideStringExtern (WideStringLoopvalue)'Wide_Image;
            
            when others =>
               null;
         end case;
            
      end loop WideStringLoop;
      
      return Ada.Strings.Wide_Unbounded.To_Wide_String (Source => NewWideString);
      
   end WideString;
   
   
   
   function UnboundedWideWideString
     (UnboundedWideWideStringExtern : in Unbounded_Wide_Wide_String)
      return Unbounded_Wide_Wide_String
   is begin
      
      return To_Unbounded_Wide_Wide_String (Source => WideWideString (WideWideStringExtern => To_Wide_Wide_String (Source => UnboundedWideWideStringExtern)));
      
   end UnboundedWideWideString;
   
   

   function WideWideString
     (WideWideStringExtern : in Wide_Wide_String)
      return Wide_Wide_String
   is begin
      
      case
        WideWideStringExtern'Length
      is
         when 0 =>
            return "";
         
         when others =>
            NewWideWideString := Ada.Strings.Wide_Wide_Unbounded.To_Unbounded_Wide_Wide_String (Source => "");
      end case;
      
      WideWideStringLoop:
      for WideWideStringLoopvalue in WideWideStringExtern'Range loop
         
         case
           WideWideStringExtern (WideWideStringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               NewWideWideString := NewWideWideString & WideWideStringExtern (WideWideStringLoopvalue)'Wide_Wide_Image;
            
            when others =>
               null;
         end case;
            
      end loop WideWideStringLoop;
      
      return Ada.Strings.Wide_Wide_Unbounded.To_Wide_Wide_String (Source => NewWideWideString);
      
   end WideWideString;

end RemoveNonNumbers;

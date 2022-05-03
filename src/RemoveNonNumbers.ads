pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Unbounded;
with Ada.Strings.Wide_Unbounded;
with Ada.Strings.Wide_Wide_Unbounded;

package RemoveNonNumbers is

   procedure NormalString
     (StringExtern : in out String);
   
   procedure WideString
     (WideStringExtern : in out Wide_String);
   
   procedure WideWideString
     (WideWideStringExtern : in out Wide_Wide_String);
   
   
   
   function NormalString
     (StringExtern : in String)
      return String;

   function WideString
     (WideStringExtern : in Wide_String)
      return Wide_String;

   function WideWideString
     (WideWideStringExtern : in Wide_Wide_String)
      return Wide_Wide_String;
   
private
   
   NewString : Ada.Strings.Unbounded.Unbounded_String;
   NewWideString : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
   NewWideWideString : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;

end RemoveNonNumbers;

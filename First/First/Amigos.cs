//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace First
{
    using System;
    using System.Collections.Generic;
    
    public partial class Amigos
    {
        public int Id { get; set; }
        public int JogadorId { get; set; }
        public int AmigoId { get; set; }
    
        public virtual Jogador Jogador { get; set; }
        public virtual Jogador Amigo { get; set; }
    }
}
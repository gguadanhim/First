using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace First
{
    public class ControleJogadores
    {
        public ControleJogadores()
        {

        }

        public Boolean cadastrarJogador(String asNome)
        {
            Boolean lbRetorno = false;
            try
            {
                using (var banco = new Modelo_dadosContainer())
                {
                    Jogador lJogador = new Jogador();
                    lJogador.Nome = asNome;
                    banco.JogadorSet.Add(lJogador);
                    banco.SaveChanges();
                    lbRetorno = true;
                }
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }
            return lbRetorno;
        }

        public List<Jogador> getJogadores()
        {
            List<Jogador> lListaJogadores = new List<Jogador>();

            using (var banco = new Modelo_dadosContainer())
            {

                var listaJogadores = from p in banco.JogadorSet
                                     select p;

                foreach (Jogador item in listaJogadores)
                {
                    lListaJogadores.Add(item);
                }
            }

            return lListaJogadores;
        }

        public Boolean cadastrarCampo(String asNome)
        {
            Boolean lbRetorno = false;
            try
            {
                using (var banco = new Modelo_dadosContainer())
                {
                    Campo lCampo = new Campo();
                    lCampo.Nome = asNome;
                    banco.CampoSet.Add(lCampo);
                    banco.SaveChanges();
                    lbRetorno = true;
                }
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }
            return lbRetorno;
        }

        public Boolean vincularJogadorTime(int aiJogador, int aiTime)
        {
            Boolean lbRetorno = false;
            try
            {
                using (var banco = new Modelo_dadosContainer())
                {
                    JogadoresTime lJogadorTime = new JogadoresTime();
                    lJogadorTime.JogadorId = aiJogador;
                    lJogadorTime.TimeId = aiTime;
                    banco.JogadoresTimeSet.Add(lJogadorTime);
                    banco.SaveChanges();
                    lbRetorno = true;
                }
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }
            return lbRetorno;
        }

        public Boolean criarTime(string asNome, int aiTipoCampo, int aiCodigoJogadorPropietario)
        {
            Boolean lbRetorno = false;
            try
            {
                using (var banco = new Modelo_dadosContainer())
                {
                    Time lTime = new Time();
                    lTime.Jogador_proprietarioId = aiCodigoJogadorPropietario;
                    lTime.Nome = asNome;
                    lTime.CampoId = aiTipoCampo;
                    banco.TimeSet.Add(lTime);
                    banco.SaveChanges();
                    lbRetorno = true;
                }
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }
            return lbRetorno;
        }

        public Boolean cadastrarPosicao(String asNome, int aiTipoCampo)
        {
            Boolean lbRetorno = false;
            try
            {
                using (var banco = new Modelo_dadosContainer())
                {
                    Posicao lPosicao = new Posicao();
                    lPosicao.Nome = asNome;
                    lPosicao.CampoId = aiTipoCampo;
                    banco.PosicaoSet.Add(lPosicao);
                    banco.SaveChanges();
                    lbRetorno = true;
                }
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }
            return lbRetorno;
        }

        public Boolean vincularJogadorPosicao(int aiJogador, int aiPosicao)
        {
            Boolean lbRetorno = false;
            try
            {
                using (var banco = new Modelo_dadosContainer())
                {
                    JogadorPosicao lJogadorPosicao = new JogadorPosicao();
                    lJogadorPosicao.JogadorId = aiJogador;
                    lJogadorPosicao.PosicaoId = aiPosicao;
                    banco.JogadorPosicaoSet.Add(lJogadorPosicao);
                    banco.SaveChanges();
                    lbRetorno = true;
                }
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }
            return lbRetorno;
        }

        public List<Campo> getCampos()
        {
            List<Campo> lListaCampos = new List<Campo>();

            using (var banco = new Modelo_dadosContainer())
            {

                var listaJogadores = from p in banco.CampoSet 
                                     select p;

                foreach (Campo item in listaJogadores)
                {
                    lListaCampos.Add(item);
                }
            }

            return lListaCampos;
        }
    }
}